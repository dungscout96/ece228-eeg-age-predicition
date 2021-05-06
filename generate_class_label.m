age_class = [0, 7, 9, 11, 13, 16, 23];

load('child_mind_y_ages_test_2s_24chan_raw.mat')
Y_cls_test = label_class(Y_test, age_class);
save('child_mind_yclass_ages_test_2s_24chan_raw.mat','Y_cls_test')
figure
histogram(Y_cls_test)
title('Test class distribution')

load('child_mind_y_ages_train_2s_24chan_raw.mat')
Y_cls_train = label_class(Y_train, age_class);
save('child_mind_yclass_ages_train_2s_24chan_raw.mat','Y_cls_train')
figure
histogram(Y_cls_train)
title('Train class distribution')


load('child_mind_y_ages_val_2s_24chan_raw.mat')
Y_cls_val = label_class(Y_val, age_class);
save('child_mind_yclass_ages_val_2s_24chan_raw.mat','Y_cls_val')
figure
histogram(Y_cls_val)
title('Val class distribution')



function Y = label_class(Y_input, age_class)
Y = zeros(size(Y_input));
for i_class = 1:length(age_class)-1
    Y_tmp = ((age_class(i_class)<=Y_input).*(age_class(i_class+1)>Y_input));
    Y = Y + Y_tmp*i_class;
end
end