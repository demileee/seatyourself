module ApplicationHelper

  def datetime(date, hour, min)
    d = Date.parse(date) if date != ''
    dt = DateTime.new(d.year, d.month, d.day, hour.to_i, min.to_i) if date != ''
    return dt
  end

  def dateformat(date)
    d = date.localtime.strftime("%A, %d %b %Y %l:%M %p")
    return d
  end

  def fulldate(date_time)
    d = date_time.localtime.strftime("%Y-%m-%d")
    return d
  end

  def hour(date_time)
    h = date_time.localtime.strftime("%H")
    return h
  end

  def min(date_time)
    m = date_time.locatime.strftime("%M")
    return m
  end

  def hourmin(date_time)
    hm = date_time.localtime.strftime("%H:%M")
    return hm
  end

end
