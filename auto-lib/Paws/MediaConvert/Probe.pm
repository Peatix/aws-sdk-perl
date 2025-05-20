
package Paws::MediaConvert::Probe;
  use Moose;
  has InputFiles => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::ProbeInputFile]', traits => ['NameInRequest'], request_name => 'inputFiles');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Probe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/probe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::ProbeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Probe - Arguments for method Probe on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Probe on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method Probe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Probe.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $ProbeResponse = $mediaconvert->Probe(
      InputFiles => [
        {
          FileUrl => 'My__string',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ProbeResults = $ProbeResponse->ProbeResults;

    # Returns a L<Paws::MediaConvert::ProbeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/Probe>

=head1 ATTRIBUTES


=head2 InputFiles => ArrayRef[L<Paws::MediaConvert::ProbeInputFile>]

Specify a media file to probe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Probe in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

