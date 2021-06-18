web:
	python service/web_server.py 8081

book:
	ipython notebook

train_hold:
	python service/hold_position_model_helpers/manual_refresh.py 

train_recover:
	python service/recovery_model_helpers/manual_refresh.py 
	
train_local_recover_first_build:
	python service/local_test_helpers/manual_first_build.py 
	
train_local_recover_rebuild:
	python service/local_test_helpers/manual_rebuild.py 
	