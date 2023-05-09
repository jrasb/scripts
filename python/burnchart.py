import matplotlib.pyplot as plt; 

MAX_POINTS = 52; 
TOTAL_WEEKS = 6; 

plt.axis([0, TOTAL_WEEKS, 0, MAX_POINTS]); 

# Best case scenario line
preferable_progress_line = []; 
for i in range(TOTAL_WEEKS + 1):
    delta = MAX_POINTS / TOTAL_WEEKS
    preferable_progress_line.insert(i, delta * i); 

preferable_progress_line.reverse(); 
print(preferable_progress_line); 

plt.plot(preferable_progress_line); 

# Actual progress
# Points done is the value in the done section achieved per week of work
points_done = [1]; 

progress_line = []; 
for i in range(len(points_done)):
    
    progress_line.append((MAX_POINTS - points_done[i])); 

print(points_done); 
print(progress_line); 
plt.plot(progress_line, 'rs'); 

plt.show(); 
