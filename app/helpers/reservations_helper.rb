module ReservationsHelper

  def datetime(date, hour, min)
    d = Date.parse(date)
    time = []
    time << hour
    time << min
    time.join(" ")
    t = Time.parse(time[0])
    dt = DateTime.new(d.year, d.month, d.day, t.hour, t.min, t.sec, t.zone)
    return dt
  end

  def dateformat(date)
    d = date.localtime.strftime("%A, %d %b %Y %l:%M %p")
    return d
  end

end

## strftime method
