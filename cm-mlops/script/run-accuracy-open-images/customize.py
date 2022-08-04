from cmind import utils
import cmind as cm
import os

def preprocess(i):

    os_info = i['os_info']
    env = i['env']
    results_dir = env.get("CM_MLC_RESULTS_DIR", "")
    if results_dir == "":
        print("Please set CM_MLC_RESULTS_DIR")
        return {'return':-1}

    CMD = env['CM_PYTHON_BIN'] + ' ' + os.path.join(env['CM_MLC_INFERENCE_VISION_PATH'], "tools",
            "accuracy-openimages.py") + " --mlperf-accuracy-file " + os.path.join(results_dir,
                    "mlperf_log_accuracy.json") + " --openimages-dir " + env['CM_DATASET_PATH'] + " > " + os.path.join(results_dir, "accuracy.txt")
    print(CMD)
    ret = os.system(CMD)

    return {'return':ret}