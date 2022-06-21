function formatToLocale(date: string | Date, options: object) {
    return new Date(date).toLocaleDateString('fr-FR', options);
}

export function format(date: string | Date) {
    return formatToLocale(date, { weekday: 'long', year: 'numeric', month: 'long', day:'numeric' })
}

export function formatShort(date: string | Date) {
    return formatToLocale(date , { month: 'long', day:'numeric' });
}

export function formatToISO(date: number) {
    return new Date(date).toISOString().split('T')[0];
}

function resetTime(date: string | Date) {
    return new Date(date).setHours(0, 0, 0, 0);
}

/*
 * input is fully contained within date range
 */
export function inBetweenRange(inputStart: string | Date, inputEnd: string | Date, rangeStart: string | Date, rangeEnd: string | Date) {
    return resetTime(inputStart) >= resetTime(rangeStart) && resetTime(inputEnd) <= resetTime(rangeEnd);
}

/*
 * input intersects (start and/or end) with date range
 */
export function intersectsRange(inputStart: string | Date, inputEnd: string | Date, rangeStart: string | Date, rangeEnd: string | Date) {
    return !(resetTime(rangeEnd) < resetTime(inputStart) || resetTime(rangeStart) > resetTime(inputEnd))
}

export function getTomorrowsDate() {
  const today = new Date();

  return today.setDate(today.getDate() + 1);
}
