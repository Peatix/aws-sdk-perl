package Paws::EC2::CpuOptions;
  use Moose;
  has AmdSevSnp => (is => 'ro', isa => 'Str', request_name => 'amdSevSnp', traits => ['NameInRequest']);
  has CoreCount => (is => 'ro', isa => 'Int', request_name => 'coreCount', traits => ['NameInRequest']);
  has ThreadsPerCore => (is => 'ro', isa => 'Int', request_name => 'threadsPerCore', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CpuOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CpuOptions object:

  $service_obj->Method(Att1 => { AmdSevSnp => $value, ..., ThreadsPerCore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CpuOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AmdSevSnp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmdSevSnp => Str

Indicates whether the instance is enabled for AMD SEV-SNP. For more
information, see AMD SEV-SNP
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html).


=head2 CoreCount => Int

The number of CPU cores for the instance.


=head2 ThreadsPerCore => Int

The number of threads per CPU core.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
