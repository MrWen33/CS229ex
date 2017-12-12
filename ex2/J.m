function cost=J(theta,x,y)
	m=length(x);
	n=columns(x);
	Sum=0;
	for i=1:m
		Sum+=(h(theta,(x(i,:)'))-y(i))^2;
	end
	cost=Sum/(2*m);