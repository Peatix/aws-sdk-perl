package Paws::EC2::ProcessorInfo;
  use Moose;
  has Manufacturer => (is => 'ro', isa => 'Str', request_name => 'manufacturer', traits => ['NameInRequest']);
  has SupportedArchitectures => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedArchitectures', traits => ['NameInRequest']);
  has SupportedFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedFeatures', traits => ['NameInRequest']);
  has SustainedClockSpeedInGhz => (is => 'ro', isa => 'Num', request_name => 'sustainedClockSpeedInGhz', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ProcessorInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ProcessorInfo object:

  $service_obj->Method(Att1 => { Manufacturer => $value, ..., SustainedClockSpeedInGhz => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ProcessorInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Manufacturer

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Manufacturer => Str

The manufacturer of the processor.


=head2 SupportedArchitectures => ArrayRef[Str|Undef]

The architectures supported by the instance type.


=head2 SupportedFeatures => ArrayRef[Str|Undef]

Indicates whether the instance type supports AMD SEV-SNP. If the
request returns C<amd-sev-snp>, AMD SEV-SNP is supported. Otherwise, it
is not supported. For more information, see AMD SEV-SNP
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html).


=head2 SustainedClockSpeedInGhz => Num

The speed of the processor, in GHz.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
