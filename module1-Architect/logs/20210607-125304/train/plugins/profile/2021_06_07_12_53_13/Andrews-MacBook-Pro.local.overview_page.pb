�	��(\���?��(\���?!��(\���?	yel��W&@yel��W&@!yel��W&@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��(\���?bX9�ȶ?AB`��"��?YX9��v��?*	     �M@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat/�$��?!�����A@)/�$��?1�����A@:Preprocessing2U
Iterator::Model::ParallelMapV2�� �rh�?!�}ylE�<@)�� �rh�?1�}ylE�<@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapy�&1��?!d+����7@)����Mb�?1'u_+@:Preprocessing2F
Iterator::Model�~j�t��?!�Iݗ�VD@)y�&1�|?1d+����'@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice�~j�t�x?!�Iݗ�V$@)�~j�t�x?1�Iݗ�V$@:Preprocessing2T
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is MODERATELY input-bound because 11.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*high2t16.0 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9zel��W&@IQs�5V@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	bX9�ȶ?bX9�ȶ?!bX9�ȶ?      ��!       "      ��!       *      ��!       2	B`��"��?B`��"��?!B`��"��?:      ��!       B      ��!       J	X9��v��?X9��v��?!X9��v��?R      ��!       Z	X9��v��?X9��v��?!X9��v��?b      ��!       JCPU_ONLYYzel��W&@b qQs�5V@Y      Y@q�:8k��K@"�

both�Your program is MODERATELY input-bound because 11.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
nohigh"t16.0 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.2no:
Refer to the TF2 Profiler FAQb�55.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"CPU: B 