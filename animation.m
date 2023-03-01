function [] = animation(r_vec)

n=length(r_vec(:,1));
hold on
xmin=min(r_vec(:,1));
xmax=max(r_vec(:,1));
ymin=min(r_vec(:,2));
ymax=max(r_vec(:,2));
mn=min(xmin,ymin);
mx=max(xmax,ymax);

for i = 1:n


    
    if i<=8
        j=1;
    else
        j=i-8;
    end

    %U & V direction of quiver aerrows from r_plt(3) which is phi

    clf
    hold on
    %plot(r_vec(j:i,1),r_vec(j:i,2),'b');
    %plot(r_vec(1:i,1),r_vec(1:i,2),'b');
    plot(r_vec(:,1),r_vec(:,2),'b'); %rocket trajectory
    plot(r_vec(i,1),r_vec(i,2),'r.',MarkerSize=12);
    %quiver(r_vec(i,1),r_vec(i,2),U,V);

    xlim([mn,mx]);
    ylim([mn,mx]);
    hold off

    drawnow
end

