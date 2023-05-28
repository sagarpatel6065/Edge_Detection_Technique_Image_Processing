r1=sqrt(mean((ref_i(:)-n1_S(:)).^2));
r2=sqrt(mean((ref_i(:)-n1_P(:)).^2));
r3=sqrt(mean((ref_i(:)-n1_log(:)).^2));
r4=sqrt(mean((ref_i(:)-n1_C(:)).^2));

r5=sqrt(mean((ref_i(:)-n2_S(:)).^2));
r6=sqrt(mean((ref_i(:)-n2_P(:)).^2));
r7=sqrt(mean((ref_i(:)-n2_log(:)).^2));
r8=sqrt(mean((ref_i(:)-n2_C(:)).^2));

r9=sqrt(mean((ref_i(:)-n3_S(:)).^2));
r10=sqrt(mean((ref_i(:)-n3_P(:)).^2));
r11=sqrt(mean((ref_i(:)-n3_log(:)).^2));
r12=sqrt(mean((ref_i(:)-n3_C(:)).^2));

r13=sqrt(mean((ref_i(:)-n4_S(:)).^2));
r14=sqrt(mean((ref_i(:)-n4_P(:)).^2));
r15=sqrt(mean((ref_i(:)-n4_log(:)).^2));
r16=sqrt(mean((ref_i(:)-n4_C(:)).^2));

r17=sqrt(mean((ref_i(:)-n5_S(:)).^2));
r18=sqrt(mean((ref_i(:)-n5_P(:)).^2));
r19=sqrt(mean((ref_i(:)-n5_log(:)).^2));
r20=sqrt(mean((ref_i(:)-n5_C(:)).^2));

%concatenating the rmse values obtained, into a matrix
r=[r1 r2 r3 r4;r5 r6 r7 r8;r9 r10 r11 r12;r13 r14 r15 r16;r17 r18 r19 r20]