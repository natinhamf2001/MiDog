ll = []
rl = []
lh = []
rh = []
t = []

for i=1:length(data1)
    if o.marker(i) == 1
        lh(end+1,:)=data1(i,:);
    end
end

for i=1:length(data1)
    if o.marker(i) == 2
        rh(end+1,:)=data1(i,:);
    end
end

for i=1:length(data1)
    if o.marker(i) == 4
        ll(end+1,:)=data1(i,:);
    end
end

for i=1:length(data1)
    if o.marker(i) == 5
        t(end+1,:)=data1(i,:);
    end
end

for i=1:length(data1)
    if o.marker(i) == 6
        rl(end+1,:)=data1(i,:);
    end
end