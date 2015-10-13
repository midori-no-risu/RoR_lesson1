time_now = Time.now
datebirth = Time.new(1991, 9, 2, 10, 30, 0, "+03:00")
datetime_difference_sec = time_now - datebirth
dt_dif_min = datetime_difference_sec / 60
dt_dif_hs = dt_dif_min / 60
dt_dif_ds = dt_dif_hs / 24
dt_dif_ys = dt_dif_ds / 365

puts "Yay! I've been alive for #{ dt_dif_ys.round.to_s } years, or #{dt_dif_ds.round.to_s} days,
or #{dt_dif_hs.round.to_s} hours, or #{dt_dif_min.round.to_s} minutes or #{datetime_difference_sec.round.to_s} seconds!"
