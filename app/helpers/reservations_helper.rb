module ReservationsHelper

  def datetime(date, time)
    d = Date.parse(date)
    t = Time.parse(time)
    dt = DateTime.new(d.year, d.month, d.day, t.hour, t.min, t.sec, t.zone)
    return dt
  end

  def dateformat(date)
    d = date.localtime.strftime("%A, %d %b %Y %l:%M %p")
    return d
  end

end

## strftime method
