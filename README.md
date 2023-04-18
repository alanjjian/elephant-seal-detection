# mids-251-elephant-seal
Final Project for MIDS 251

Notes about the data:
We did not use some tiles from the following full images because they included California Sea Lions in addition to Northern Elephant Seals: 
`4MSL0107`, `4MSL0118`, `4MSL0089`, `4MSL0093`, `4MSL0094`, `4MSL0095`, `5MSL0009`, `5MSL0010`, `5MSL0011`, `5MSL0012`, `5MSL0013`, `5MSL0014`, `5MSL0048`, `5MSL0067`, `5MSL0068`, `5MSL0084`, `5MSL0085`, `5MSL3902`, and `5MSL3903`.

To reproduce our work...
- start up a docker container using the `Dockerfile` in this repo.
- tile the 230 images found in `Data/Full_Images` using `Code/tile_images.ipynb`
- label tiled images using [Roboflow](https://docs.roboflow.com/)
- train the model and evaluate it on the test set using `Code/run_model.ipynb`
- examine model errors using `Code/NOTEBOOK`

Our final model weights are available [here](https://drive.google.com/file/d/1rb_e_N_TLye7oJ_bDhwDucriEomuPwrt/view?usp=sharing).
