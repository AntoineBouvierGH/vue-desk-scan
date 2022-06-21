import axios from "axios";
import * as DateService from '../services/Date';

export const user: {
  login: string | undefined;
  isAdmin: boolean;
} = {
  login: undefined,
  isAdmin: false
};

export type Booking = {
  begin_date: string;
  bench: number;
  desk: number;
  end_date: string;
  floor: number;
  id: string;
  login: string;
  room: number;
}

export type GetDeskResponse = {
  data: {
    type: string;
    value: string; // [ {login, date }]
  };
  desk: string; // desk id
}

// TODO - improve typing, make it a "BOOKING"
export type DeskDailyBookings = {
  deskId: string;
  dailyBookings: Array<{
    login: string;
    date: string;
  }>;
}

const BRIDGE_URL = process.env.VUE_APP_BRIDGE_URL

const HTTP_OPTIONS = { withCredentials: true };

export async function runTask(task: string, params = {}) {
  return axios.post(
    `${BRIDGE_URL}task/run/${task}`,
    {
      "INPUT_VARS": params
    }, HTTP_OPTIONS
  );
}

export function isAuth() {
  return axios.get(`${BRIDGE_URL}isauth`, HTTP_OPTIONS);
}

export function signIn() {
  window.location.href = `${BRIDGE_URL}auth?allowRedirection=true`
}

export function signOut() {
  return axios.get(`${BRIDGE_URL}/logout`, HTTP_OPTIONS).then(() => {
    document.location.reload();
  });
}

export function loadUserDetails() {
  return runTask("user_details").then(response => {
    user.login = response.data['login'];
    user.isAdmin = response.data['is_admin'] === '1';
    return response;
  })
}

export function getBookingsByDesk(from: string, to: string, floor: number): Promise<Array<DeskDailyBookings>> {
  return runTask('desk/get', {
    'begin_date' : from,
    'end_date'   : to,
    'floor'      : floor
  }).then((response) => {
    const data: Array<GetDeskResponse> = response.data;

    return data.map((deskInfo) => ({
      deskId: deskInfo.desk,
      dailyBookings: JSON.parse(deskInfo.data.value)
    }));
  });
}

export function getBookings(from = '', to = '', onlyForCurrentUser = false): Promise<Array<Booking>> {
  return runTask('booking/get', { 'all': !onlyForCurrentUser }).then(
    (response) => {
      const bookings: Array<Booking> = (response.data as Array<Booking>);

      if (!from || !to) {
        return bookings;
      }

      return bookings.filter(booking => DateService.intersectsRange(booking.begin_date, booking.end_date, from, to))
    });
}

export function cancelBooking(login: string, from: string, to: string): Promise<boolean> {
    return runTask('desk/unbook', { login, 'begin_date': from, 'end_date': to}).then((response) => response.data[0].days > 0);
}
