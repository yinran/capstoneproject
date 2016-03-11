total_hour=24;
t=0:total_hour*60-1;
pick_up_num=zeros(length(t),1);


textdata1=importdata('pickup9.txt');

% textdata1 is the imported data from 2012-09
for i=3:length(textdata1)
    b=textdata1.textdata(i,2);
    divider_index = strfind(b, ' ');
    time=b(divider_index(1)+1:length(b));
    mid=strfind(time,':');
    h=time(1:mid-1);
    m=time(mid+1:length(time));
    hour_num=str2double(h);
    min_num=str2double(m);
    time_in_m=hour_num*60+min_num;
    pick_up_num(time_in_m+1) = pick_up_num(time_in_m+1)+1;
end

plot(t,pick_up_num/91);

% textdata2 is the imported data from 2012-10
for i=2:length(textdata2)
    b=textdata{i,2};
    divider_index = strfind(b, ' ');
    time=b(divider_index(1)+1:length(b));
    mid=strfind(time,':');
    h=time(1:mid-1);
    m=time(mid+1:length(time));
    hour_num=str2double(h);
    min_num=str2double(m);
    time_in_m=hour_num*60+min_num;
    pick_up_num(time_in_m+1) = pick_up_num(time_in_m+1)+1;
end

% textdata3 is the imported data from 2012-11
for i=2:length(textdata3)
    b=textdata{i,2};
    divider_index = strfind(b, ' ');
    time=b(divider_index(1)+1:length(b));
    mid=strfind(time,':');
    h=time(1:mid-1);
    m=time(mid+1:length(time));
    hour_num=str2double(h);
    min_num=str2double(m);
    time_in_m=hour_num*60+min_num;
    pick_up_num(time_in_m+1) = pick_up_num(time_in_m+1)+1;
end

plot(t,pick_up_num/91);