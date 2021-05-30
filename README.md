# 01_LAPORAN-TA-LATEX
 Laporan Tugas Akhir dengan Menggunakan Format Latex
 
 cara commit ke origin
 git add . // menambahkan semua perubahan
 git commit -m "pesan" // menyimpan perubahan
 git push origin // upload file ke github


Beberapa fungsi yang penting


membuat confusion matrix (CM) dengan library:

from sklearn.metrics import confusion_matrix
CM = confusion_matrix(y_pre, test_target)#sebenernya (y_pre, test_target) cuma biar sama aja

load model keras:

loaded = keras.models.load_model('../../DST/models/study_case_1/model_90_sigmoid_train_0.938_test_0.82913_11_2020 10_25')
untuk nama model jangan digunakan tanda kurung kotak


prediksi class :
y_predict = loaded.predict_classes(test_input, batch_size=None, verbose=0)+1


mengubah kategori ke integer:
y_predict = y_predict.argmax(axis=1)+1

membuat array angka 1-9:
np.arange(9)+1

ukuran array:
np.shape(nama_array)

cara permutasi:
from itertools import permutations 
perm = permutations([1, 2, 3, 4, 5]) 
for i in list(perm): 
    print (i) 
    
menyimpan gambar tanpa terpotong bagian x label nya:
fig.savefig(path, dpi=600, bbox_inches = "tight")

folder untuk deploy:
alfa@alinux:/media/alfa/DATA/MATKUL/TA BROTHER/05_SOFTWARE/Transformer Health Index$ 
firebase deploy --only hosting

