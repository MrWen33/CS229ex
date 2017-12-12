function newTheta=gd(theta,x,y,speed,iternum)
	m=length(x);
	n=columns(x);
	newTheta=zeros(n,1);
	for i=1:iternum
		for j=1:n
			Sum=0;
			for k=1:m
				Sum+=(h(theta,(x(k,:))')-y(k))*x(k,j);
			end
			newTheta(j)=theta(j)-speed/m*Sum;
		end
		theta=newTheta;
	end
