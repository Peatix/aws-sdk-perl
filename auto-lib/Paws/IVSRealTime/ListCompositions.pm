
package Paws::IVSRealTime::ListCompositions;
  use Moose;
  has FilterByEncoderConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByEncoderConfigurationArn');
  has FilterByStageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByStageArn');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCompositions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListCompositions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::ListCompositionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListCompositions - Arguments for method ListCompositions on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCompositions on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method ListCompositions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCompositions.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $ListCompositionsResponse = $ivsrealtime->ListCompositions(
      FilterByEncoderConfigurationArn => 'MyEncoderConfigurationArn', # OPTIONAL
      FilterByStageArn                => 'MyStageArn',                # OPTIONAL
      MaxResults                      => 1,                           # OPTIONAL
      NextToken                       => 'MyPaginationToken',         # OPTIONAL
    );

    # Results:
    my $Compositions = $ListCompositionsResponse->Compositions;
    my $NextToken    = $ListCompositionsResponse->NextToken;

    # Returns a L<Paws::IVSRealTime::ListCompositionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/ListCompositions>

=head1 ATTRIBUTES


=head2 FilterByEncoderConfigurationArn => Str

Filters the Composition list to match the specified
EncoderConfiguration attached to at least one of its output.



=head2 FilterByStageArn => Str

Filters the Composition list to match the specified Stage ARN.



=head2 MaxResults => Int

Maximum number of results to return. Default: 100.



=head2 NextToken => Str

The first Composition to retrieve. This is used for pagination; see the
C<nextToken> response field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCompositions in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

