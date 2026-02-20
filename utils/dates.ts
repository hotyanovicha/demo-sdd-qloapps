/**
 * Returns check-in and check-out day numbers (as strings) relative to today,
 * suitable for use with the hotel search datepicker.
 *
 * @param startOffset - days from today until check-in. Default: 1.
 * @param duration - length of stay in nights. Default: 5.
 * @returns An object with `checkInDay`, `checkOutDay` as day-of-month strings, and `duration` in nights.
 */
export function getSearchDates(
  startOffset = 1,
  duration = 5,
): { checkInDay: string; checkOutDay: string; duration: number } {
  const checkIn = new Date();
  checkIn.setDate(checkIn.getDate() + startOffset);
  const checkOut = new Date(checkIn);
  checkOut.setDate(checkIn.getDate() + duration);
  return {
    checkInDay: String(checkIn.getDate()),
    checkOutDay: String(checkOut.getDate()),
    duration,
  };
}
