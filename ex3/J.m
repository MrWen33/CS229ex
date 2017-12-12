function cost=J(theta,x,y)
	m=length(x);
	n=columns(x);
	cost=(1/(2*m))*(x*theta-y)'*(x*theta-y);