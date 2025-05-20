
package Paws::DataZone::RejectPredictions;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has RejectChoices => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::RejectChoice]', traits => ['NameInRequest'], request_name => 'rejectChoices');
  has RejectRule => (is => 'ro', isa => 'Paws::DataZone::RejectRule', traits => ['NameInRequest'], request_name => 'rejectRule');
  has Revision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectPredictions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets/{identifier}/reject-predictions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::RejectPredictionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::RejectPredictions - Arguments for method RejectPredictions on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectPredictions on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method RejectPredictions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectPredictions.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $RejectPredictionsOutput = $datazone->RejectPredictions(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyAssetIdentifier',
      ClientToken      => 'MyClientToken',       # OPTIONAL
      RejectChoices    => [
        {
          PredictionTarget  => 'MyString',
          PredictionChoices => [ 1, ... ],       # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RejectRule => {
        Rule      => 'ALL',    # values: ALL, NONE; OPTIONAL
        Threshold => 1.0,      # OPTIONAL
      },    # OPTIONAL
      Revision => 'MyRevision',    # OPTIONAL
    );

    # Results:
    my $AssetId       = $RejectPredictionsOutput->AssetId;
    my $AssetRevision = $RejectPredictionsOutput->AssetRevision;
    my $DomainId      = $RejectPredictionsOutput->DomainId;

    # Returns a L<Paws::DataZone::RejectPredictionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/RejectPredictions>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 B<REQUIRED> Identifier => Str

The identifier of the prediction.



=head2 RejectChoices => ArrayRef[L<Paws::DataZone::RejectChoice>]

Specifies the prediction (aka, the automatically generated piece of
metadata) and the target (for example, a column name) that can be
rejected.



=head2 RejectRule => L<Paws::DataZone::RejectRule>

Specifies the rule (or the conditions) under which a prediction can be
rejected.



=head2 Revision => Str

The revision that is to be made to the asset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectPredictions in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

