	^�I+�?^�I+�?!^�I+�?	7�BW�&@7�BW�&@!7�BW�&@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$^�I+�?X9��v��?A�G�z��?Y)\���(�?*	      M@2U
Iterator::Model::ParallelMapV2��~j�t�?!��{a@@)��~j�t�?1��{a@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��~j�t�?!��{a@@)��~j�t�?1��{a@@:Preprocessing2F
Iterator::Model���S㥛?!�i��FG@)����Mb�?1a���+@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�~j�t��?!��=��4@)�~j�t�x?1��=��$@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice�~j�t�x?!��=��$@)�~j�t�x?1��=��$@:Preprocessing2T
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is MODERATELY input-bound because 11.3% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*moderate2t12.7 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.96�BW�&@I��5-V@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	X9��v��?X9��v��?!X9��v��?      ��!       "      ��!       *      ��!       2	�G�z��?�G�z��?!�G�z��?:      ��!       B      ��!       J	)\���(�?)\���(�?!)\���(�?R      ��!       Z	)\���(�?)\���(�?!)\���(�?b      ��!       JCPU_ONLYY6�BW�&@b q��5-V@