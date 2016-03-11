total_day=91;
t=1:total_day;
daily_pick_up_num=zeros(length(t),1);

%textdata1=importdata('pickup9.txt');

% textdata1 is the imported data from 2012-09
for i=2:length(pickup9)
    b=textdata1.textdata(i,2);
   % b=textdata1{i,2};
    divider_index = strfind(b, '/');
    month=b(1:divider_index(1)-1);
    month=b(1:divider_index(1)-1);
    day=b(divider_index(1)+1:divider_index(2)-1);
    month_num=str2double(month);
    day_num=str2double(day);
    if month_num > 11 || month_num < 9
        continue;
    end
    date_in_day = 0;
    if month_num == 10
        date_in_day = 30;
    end
    if month_num == 11
        date_in_day = 61;
    end
    date_in_day=date_in_day+day_num;
    daily_pick_up_num(date_in_day) =daily_pick_up_num(date_in_day)+1;
end



% textdata2 is the imported data from 2012-10
for i=2:length(textdata2)
    b=textdata2{i,2};
    divider_index = strfind(b, '/');
    month=b(1:divider_index(1)-1);
    day=b(divider_index(1)+1:divider_index(2)-1);
    month_num=str2double(month);
    day_num=str2double(day);
    if month_num > 11 || month_num < 9
        continue;
    end
    date_in_day = 0;
    if month_num == 10
        date_in_day = 30;
    end
    if month_num == 11
        date_in_day = 61;
    end
    date_in_day=date_in_day+day_num;
    daily_pick_up_num(date_in_day) =daily_pick_up_num(date_in_day)+1;
end

% textdata3 is the imported data from 2012-11
for i=2:length(textdata3)
    b=textdata3{i,2};
    divider_index = strfind(b, '/');
    month=b(1:divider_index(1)-1);
    day=b(divider_index(1)+1:divider_index(2)-1);
    month_num=str2double(month);
    day_num=str2double(day);
    if month_num > 11 || month_num < 9
        continue;
    end
    date_in_day = 0;
    if month_num == 10
        date_in_day = 30;
    end
    if month_num == 11
        date_in_day = 61;
    end
    date_in_day=date_in_day+day_num;
    daily_pick_up_num(date_in_day) =daily_pick_up_num(date_in_day)+1;
end

plot(t,daily_pick_up_num);