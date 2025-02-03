% Barcode Scanner using Webcam & PLC Communication in MATLAB

% Check if the Webcam Support Package is installed
if ~exist('webcam', 'file')
    error(['The "MATLAB Support Package for USB Webcams" is not installed.', ...
           ' Install it from Add-Ons > Get Add-Ons > Search "MATLAB Support Package for USB Webcams"']);
end

% Initialize webcam
try
    cam = webcam; % Use default webcam
catch
    error('No webcam detected! Check connection and try again.');
end

% Set up serial communication with PLC (Modify COM port and baud rate as needed)
plcSerial = serialport("COM3", 9600); % Change "COM3" to match your PLC's port

disp('Starting barcode scanning... Press Ctrl+C to stop.');

while true
    % Capture frame from webcam
    frame = snapshot(cam);
    
    % Convert to grayscale
    grayImage = rgb2gray(frame);
    
    % Binarize the image
    binaryImage = imbinarize(grayImage);
    
    % Detect barcode using region properties
    regions = regionprops(binaryImage, 'BoundingBox', 'Image');
    
    % Display the current frame
    imshow(frame);
    hold on;

    % Loop through detected regions
    for i = 1:length(regions)
        % Get the bounding box
        boundingBox = regions(i).BoundingBox;
        
        % Draw a rectangle around the barcode
        rectangle('Position', boundingBox, 'EdgeColor', 'r', 'LineWidth', 2);
        
        % Extract the barcode region
        barcodeRegion = imcrop(binaryImage, boundingBox);
        
        % Decode the barcode (Placeholder function, replace with actual decoding logic)
        decodedBarcode = decodeBarcode(barcodeRegion);
        
        % Display the decoded barcode
        disp(['Decoded Barcode: ', decodedBarcode]);
        
        % Send barcode data to PLC
        writeline(plcSerial, decodedBarcode);
    end

    hold off;
    
    % Pause to avoid excessive processing
    pause(0.5);
end

% Cleanup resources when done
clear cam;
clear plcSerial;

% Function to decode the barcode (Placeholder)
function decodedBarcode = decodeBarcode(~)
    % Implement actual barcode decoding logic (e.g., using a MATLAB barcode library)
    decodedBarcode = '1234567890'; % Example barcode
end
