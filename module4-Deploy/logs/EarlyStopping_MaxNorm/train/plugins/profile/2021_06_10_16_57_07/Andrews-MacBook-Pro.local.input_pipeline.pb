	J+�
@J+�
@!J+�
@	�~�-�
�?�~�-�
�?!�~�-�
�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$J+�
@��ʡE��?A�G�z	@YJ+��?*	      L@2U
Iterator::Model::ParallelMapV2;�O��n�?!%I�$I@@);�O��n�?1%I�$I@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�� �rh�?!�m۶m[>@)����Mb�?1$I�$I�<@:Preprocessing2F
Iterator::Model���S㥛?!�m۶mH@);�O��n�?1%I�$I0@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�~j�t��?!۶m۶m5@)y�&1�|?1      )@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice{�G�zt?!�m۶m�!@){�G�zt?1�m۶m�!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor����MbP?!$I�$I��?)����MbP?1$I�$I��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 1.5% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�~�-�
�?I�HK՟X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	��ʡE��?��ʡE��?!��ʡE��?      ��!       "      ��!       *      ��!       2	�G�z	@�G�z	@!�G�z	@:      ��!       B      ��!       J	J+��?J+��?!J+��?R      ��!       Z	J+��?J+��?!J+��?b      ��!       JCPU_ONLYY�~�-�
�?b q�HK՟X@