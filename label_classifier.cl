/*
OpenCL RandomForestClassifier
feature_specification = area,mean_max_distance_to_centroid_ratio,touching_neighbor_count,average_distance_of_n_nearest_neighbors=6,average_distance_of_n_nearest_neighbors=10
num_classes = 2
num_features = 5
max_depth = 2
num_trees = 10
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float i3 = READ_IMAGE(in3, sampler, POS_in3_INSTANCE(x,y,z,0)).x;
 float i4 = READ_IMAGE(in4, sampler, POS_in4_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i1<1.9632868766784668){
 if(i0<5367.0){
  s0+=16.0;
 } else {
  s0+=1.0;
  s1+=44.0;
 }
} else {
 if(i0<5404.5){
  s0+=56.0;
 } else {
  s0+=2.0;
  s1+=1.0;
 }
}
if(i3<18.768054962158203){
 s0+=88.0;
} else {
 s1+=32.0;
}
if(i3<18.768054962158203){
 s0+=86.0;
} else {
 if(i4<23.156095504760742){
  s0+=2.0;
 } else {
  s1+=32.0;
 }
}
if(i4<22.9012393951416){
 s0+=79.0;
} else {
 s1+=41.0;
}
if(i4<22.36200714111328){
 s0+=81.0;
} else {
 s1+=39.0;
}
if(i4<21.76761817932129){
 s0+=73.0;
} else {
 s1+=47.0;
}
if(i1<1.8191955089569092){
 if(i4<20.08049774169922){
  s0+=3.0;
 } else {
  s1+=21.0;
 }
} else {
 if(i3<19.520383834838867){
  s0+=82.0;
 } else {
  s1+=14.0;
 }
}
if(i3<18.819805145263672){
 s0+=85.0;
} else {
 if(i0<4644.5){
  s0+=1.0;
 } else {
  s1+=34.0;
 }
}
if(i4<22.9012393951416){
 s0+=75.0;
} else {
 s1+=45.0;
}
if(i0<5514.0){
 if(i4<24.029857635498047){
  s0+=84.0;
 } else {
  s1+=2.0;
 }
} else {
 if(i3<18.126590728759766){
  s0+=1.0;
 } else {
  s1+=33.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
