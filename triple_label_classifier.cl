/*
OpenCL RandomForestClassifier
feature_specification = average_distance_of_n_nearest_neighbors=6,average_distance_of_n_nearest_neighbors=10
num_classes = 3
num_features = 2
max_depth = 4
num_trees = 10
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
 float s2=0;
if(i0<19.483909606933594){
 if(i1<16.208995819091797){
  if(i0<13.360013961791992){
   if(i1<15.706783294677734){
    s0+=24.0;
    s2+=4.0;
   } else {
    s2+=2.0;
   }
  } else {
   s0+=16.0;
  }
 } else {
  if(i0<15.320697784423828){
   if(i1<17.785917282104492){
    s0+=2.0;
    s2+=21.0;
   } else {
    s0+=2.0;
    s2+=1.0;
   }
  } else {
   if(i1<19.624481201171875){
    s0+=19.0;
    s2+=6.0;
   } else {
    s0+=6.0;
    s1+=1.0;
    s2+=15.0;
   }
  }
 }
} else {
 s1+=46.0;
}
if(i1<23.48299789428711){
 if(i1<16.275390625){
  if(i1<15.130057334899902){
   if(i1<15.084491729736328){
    s0+=15.0;
    s2+=4.0;
   } else {
    s0+=1.0;
    s2+=3.0;
   }
  } else {
   if(i0<13.360013961791992){
    s0+=15.0;
    s2+=4.0;
   } else {
    s0+=17.0;
   }
  }
 } else {
  if(i1<17.343963623046875){
   if(i1<16.71664810180664){
    s2+=8.0;
   } else {
    s0+=3.0;
    s2+=7.0;
   }
  } else {
   if(i1<19.014328002929688){
    s0+=24.0;
    s2+=8.0;
   } else {
    s0+=5.0;
    s2+=13.0;
   }
  }
 }
} else {
 s1+=38.0;
}
if(i1<23.219829559326172){
 if(i1<15.626604080200195){
  if(i1<15.130057334899902){
   if(i1<15.097972869873047){
    s0+=18.0;
    s2+=4.0;
   } else {
    s2+=2.0;
   }
  } else {
   s0+=20.0;
  }
 } else {
  if(i1<19.201093673706055){
   if(i0<15.643537521362305){
    s0+=15.0;
    s2+=32.0;
   } else {
    s0+=18.0;
    s2+=4.0;
   }
  } else {
   if(i0<17.314605712890625){
    s2+=13.0;
   } else {
    s0+=4.0;
    s2+=1.0;
   }
  }
 }
} else {
 s1+=34.0;
}
if(i0<19.452402114868164){
 if(i1<16.22587013244629){
  if(i1<14.307239532470703){
   if(i0<11.590479850769043){
    s2+=3.0;
   } else {
    s0+=5.0;
    s2+=1.0;
   }
  } else {
   if(i0<13.059553146362305){
    s0+=26.0;
   } else {
    s0+=21.0;
    s2+=2.0;
   }
  }
 } else {
  if(i1<17.34740447998047){
   if(i0<14.763209342956543){
    s0+=5.0;
    s2+=12.0;
   } else {
    s2+=6.0;
   }
  } else {
   if(i0<16.326026916503906){
    s0+=9.0;
    s2+=13.0;
   } else {
    s0+=14.0;
    s2+=7.0;
   }
  }
 }
} else {
 s1+=41.0;
}
if(i1<22.73912811279297){
 if(i0<14.424107551574707){
  if(i0<11.600004196166992){
   s2+=2.0;
  } else {
   if(i1<16.208995819091797){
    s0+=40.0;
    s2+=3.0;
   } else {
    s0+=6.0;
    s2+=4.0;
   }
  }
 } else {
  if(i1<19.201093673706055){
   if(i0<15.320697784423828){
    s0+=8.0;
    s2+=14.0;
   } else {
    s0+=25.0;
    s2+=2.0;
   }
  } else {
   if(i0<17.097984313964844){
    s2+=10.0;
   } else {
    s0+=9.0;
    s2+=5.0;
   }
  }
 }
} else {
 s1+=37.0;
}
if(i1<23.49018096923828){
 if(i1<19.014328002929688){
  if(i1<16.170642852783203){
   if(i0<12.043758392333984){
    s0+=3.0;
    s2+=5.0;
   } else {
    s0+=39.0;
    s2+=3.0;
   }
  } else {
   if(i0<14.195760726928711){
    s2+=8.0;
   } else {
    s0+=29.0;
    s2+=12.0;
   }
  }
 } else {
  if(i0<17.314605712890625){
   s2+=14.0;
  } else {
   if(i1<20.774688720703125){
    s0+=5.0;
    s2+=2.0;
   } else {
    s2+=3.0;
   }
  }
 }
} else {
 s1+=42.0;
}
if(i1<22.73912811279297){
 if(i1<19.201093673706055){
  if(i0<15.673534393310547){
   if(i0<10.949323654174805){
    s2+=3.0;
   } else {
    s0+=57.0;
    s2+=37.0;
   }
  } else {
   if(i0<16.046659469604492){
    s0+=7.0;
   } else {
    s0+=7.0;
    s2+=1.0;
   }
  }
 } else {
  if(i1<21.39630126953125){
   if(i0<17.278362274169922){
    s2+=10.0;
   } else {
    s0+=1.0;
    s2+=4.0;
   }
  } else {
   s0+=1.0;
  }
 }
} else {
 s1+=37.0;
}
if(i0<18.848495483398438){
 if(i0<12.063301086425781){
  if(i1<14.16340446472168){
   if(i0<11.322755813598633){
    s0+=3.0;
   } else {
    s0+=2.0;
    s2+=2.0;
   }
  } else {
   if(i0<11.910934448242188){
    s0+=1.0;
    s2+=3.0;
   } else {
    s2+=6.0;
   }
  }
 } else {
  if(i1<16.208995819091797){
   if(i1<14.928888320922852){
    s0+=4.0;
    s2+=1.0;
   } else {
    s0+=24.0;
    s2+=1.0;
   }
  } else {
   if(i0<15.320697784423828){
    s0+=10.0;
    s2+=20.0;
   } else {
    s0+=31.0;
    s2+=17.0;
   }
  }
 }
} else {
 if(i1<23.48299789428711){
  s2+=1.0;
 } else {
  s1+=39.0;
 }
}
if(i1<23.538711547851562){
 if(i0<14.400636672973633){
  if(i1<16.275390625){
   if(i1<14.52145767211914){
    s0+=6.0;
    s2+=5.0;
   } else {
    s0+=33.0;
    s2+=4.0;
   }
  } else {
   if(i1<16.722116470336914){
    s2+=3.0;
   } else {
    s0+=2.0;
    s2+=1.0;
   }
  }
 } else {
  if(i1<19.014328002929688){
   if(i0<15.320697784423828){
    s0+=7.0;
    s2+=14.0;
   } else {
    s0+=22.0;
    s2+=3.0;
   }
  } else {
   if(i1<20.12138557434082){
    s0+=1.0;
    s2+=13.0;
   } else {
    s0+=10.0;
    s2+=10.0;
   }
  }
 }
} else {
 s1+=31.0;
}
if(i0<19.483909606933594){
 if(i1<16.264118194580078){
  if(i0<13.224014282226562){
   if(i0<13.063514709472656){
    s0+=16.0;
    s2+=8.0;
   } else {
    s2+=5.0;
   }
  } else {
   if(i1<16.208995819091797){
    s0+=22.0;
   } else {
    s0+=3.0;
    s2+=1.0;
   }
  }
 } else {
  if(i1<17.52350616455078){
   if(i0<14.551338195800781){
    s0+=1.0;
    s2+=15.0;
   } else {
    s0+=2.0;
    s2+=4.0;
   }
  } else {
   if(i0<15.831611633300781){
    s0+=8.0;
    s2+=3.0;
   } else {
    s0+=13.0;
    s2+=26.0;
   }
  }
 }
} else {
 s1+=38.0;
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 if (max_s < s2) {
  max_s = s2;
  cls=3;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
