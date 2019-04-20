clc;clear all; close all;
input1 = get_input();
input2 = get_input();
input3 = get_input();
input4 = get_input();
channel = transmission(input1,input2, input3,input4);
L = length(input1);
output= get_output(channel,L);
