# deepYelpRatePrediction
This is deep learning implementation of predicting user ratings based on user reviews project.

Yelp dataset is an academic dataset provided that contains information about local business. the dataset contains 5 json files
including business,checkin,reviews,tip and user.

this project focus in studying review file. the file contains user reviews about several businesses.

the yelp_academic_dataset_review.json contains several records , where each record contains encrypted user_id , encrypted 
business_id , user review as text and user rating (from 1 to 5).

we want to predict the user rating about specific business based on user review. the problem is simple :

    Given a user review , predict the user ratings.

this is machine learning classification algorithm where the input is text string and the output is number.

we should predict the output as a number from 1-5. to make it simple , I decide to make the problem as binary 
classification, trying to predict if the user likes this service or not. simply if the user select rate
from 1-3 , this means that the user don't like the service , where rating from 4-5 means that the user likes 
the service. so the problem become :

    Given a user review, predict if user like the service or not.
    
the project contains the following files:

preprocssing.py: python script to extract specific number of records from the rating file., to run this script , user
should pass the folder path of the dataset and the required number of records. for example to extract the first 2000
records , the user should run the following command.

    $python preprocssing.py [path to dataset file] [number of records to extract]. for example:

    $python preprocssing.py /Users/amrkoura/yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_review.json 2000

by running this command the scipt will generate two files: ratings.txt and reviews.txt which will be used later by
rating_prediction.py

The second python script is rating_prediction.py. user can run the script simply by:

    $python rating_prediction.py
    
The script will read the data from ratings.txt and reviews.txt and start to do learn text classification.

I decide to use deep learning algorithm for text classification. I used the convolutional neural network the learn the 
setntese classification. I have followed the following lectures in my implementations:

very nice articles:

    http://www.wildml.com/2015/11/understanding-convolutional-neural-networks-for-nlp/
    http://www.wildml.com/2015/12/implementing-a-cnn-for-text-classification-in-tensorflow/
    
academic paper:

    https://arxiv.org/pdf/1408.5882v2.pdf

stanford lecture:

    https://www.youtube.com/watch?v=EevTPpQvxiU&index=12&list=PLcGUo322oqu9n4i0X3cRJgKyVy7OkDdoi
    
the code is based on the following git repositotry:

    https://github.com/dennybritz/cnn-text-classification-tf
    
the code uses tensorflow , so please make sure to install tensorflow first before running the repository.

I have created docker image , where you can pull and execute the program there:

you can find the docker image here:

        https://hub.docker.com/r/amrkoura/yelpchallenge/
        
to pull and execute the program , please execute the following commands:

        docker pull amrkoura/yelpchallange
        docker run -t -i amrkoura/yelpchallenge /bin/bash
        cd /src/
        python rating_prediction.py
        
I have also record youtube video to explain the work that I have done here, you can find it here:

        https://www.youtube.com/watch?v=xb_Sm6gC0tY&t=2s


