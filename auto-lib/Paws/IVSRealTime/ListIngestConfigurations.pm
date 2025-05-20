
package Paws::IVSRealTime::ListIngestConfigurations;
  use Moose;
  has FilterByStageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByStageArn');
  has FilterByState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByState');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIngestConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListIngestConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::ListIngestConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListIngestConfigurations - Arguments for method ListIngestConfigurations on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIngestConfigurations on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method ListIngestConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIngestConfigurations.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $ListIngestConfigurationsResponse =
      $ivsrealtime->ListIngestConfigurations(
      FilterByStageArn => 'MyStageArn',           # OPTIONAL
      FilterByState    => 'ACTIVE',               # OPTIONAL
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $IngestConfigurations =
      $ListIngestConfigurationsResponse->IngestConfigurations;
    my $NextToken = $ListIngestConfigurationsResponse->NextToken;

    # Returns a L<Paws::IVSRealTime::ListIngestConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/ListIngestConfigurations>

=head1 ATTRIBUTES


=head2 FilterByStageArn => Str

Filters the response list to match the specified stage ARN. Only one
filter (by stage ARN or by state) can be used at a time.



=head2 FilterByState => Str

Filters the response list to match the specified state. Only one filter
(by stage ARN or by state) can be used at a time.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 MaxResults => Int

Maximum number of results to return. Default: 50.



=head2 NextToken => Str

The first IngestConfiguration to retrieve. This is used for pagination;
see the C<nextToken> response field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIngestConfigurations in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

