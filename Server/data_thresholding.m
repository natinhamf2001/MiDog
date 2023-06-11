for i=1:length(lh)
    lh_avg(i) = mean(lh(i));
end

for i=1:length(rh)
    rh_avg(i) = mean(rh(i));
end

for i=1:length(ll)
    ll_avg(i) = mean(ll(i));
end

for i=1:length(rl)
    rl_avg(i) = mean(rl(i));
end

for i=1:length(t)
    t_avg(i) = mean(t(i));
end

for i=1:length(lh)
    lh_value(i) = lh(i,6)-lh_avg(i);
end

for i=1:length(rh)
    rh_value(i) = rh(i,5)-rh_avg(i);
end

for i=1:length(ll)
    ll_value(i) = (ll(i,20)+ll(i,5))/2-ll_avg(i);
end

for i=1:length(rl)
    rl_value(i) = (rl(i,20)+rl(i,6))/2-rl_avg(i);
end

for i=1:length(t)
    t_value(i) = (t(i,16)+t(i,15))/2-t_avg(i);
end

lh_thresh = mean(lh_value);
rh_thresh = mean(rh_value);
ll_thresh = mean(ll_value);
rl_thresh = mean(rl_value);
t_thresh = mean(t_value);

outputs = zeros(length(t_value),5);

for i=1:length(lh_value)
    if lh_value(i) > lh_thresh
        outputs(i,1) = 1;
    end
end

for i=1:length(rh_value)
    if rh_value(i) > rh_thresh
        outputs(i,2) = 1;
    end
end

for i=1:length(ll_value)
    if ll_value(i) > ll_thresh
        outputs(i,3) = 1;
    end
end

for i=1:length(rl_value)
    if rl_value(i) > rl_thresh
        outputs(i,4) = 1;
    end
end

for i=1:length(t_value)
    if t_value(i) > t_thresh
        outputs(i,5) = 1;
    end
end