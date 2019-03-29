# test class
class helloworld {
  file { '/home/isberg/helloWord.txt':
  owner   => 'isberg',  
  group   => 'isberg',
  mode    => '0644',
  content => "hello, world!\n",
  }
}
