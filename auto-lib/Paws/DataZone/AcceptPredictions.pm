
package Paws::DataZone::AcceptPredictions;
  use Moose;
  has AcceptChoices => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::AcceptChoice]', traits => ['NameInRequest'], request_name => 'acceptChoices');
  has AcceptRule => (is => 'ro', isa => 'Paws::DataZone::AcceptRule', traits => ['NameInRequest'], request_name => 'acceptRule');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptPredictions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets/{identifier}/accept-predictions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::AcceptPredictionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::AcceptPredictions - Arguments for method AcceptPredictions on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptPredictions on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method AcceptPredictions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptPredictions.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $AcceptPredictionsOutput = $datazone->AcceptPredictions(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyAssetIdentifier',
      AcceptChoices    => [
        {
          PredictionTarget => 'MyString',
          EditedValue      => 'MyEditedValue',    # min: 1, max: 5000; OPTIONAL
          PredictionChoice => 1,                  # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AcceptRule => {
        Rule      => 'ALL',    # values: ALL, NONE; OPTIONAL
        Threshold => 1.0,      # OPTIONAL
      },    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      Revision    => 'MyRevision',       # OPTIONAL
    );

    # Results:
    my $AssetId  = $AcceptPredictionsOutput->AssetId;
    my $DomainId = $AcceptPredictionsOutput->DomainId;
    my $Revision = $AcceptPredictionsOutput->Revision;

    # Returns a L<Paws::DataZone::AcceptPredictionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/AcceptPredictions>

=head1 ATTRIBUTES


=head2 AcceptChoices => ArrayRef[L<Paws::DataZone::AcceptChoice>]

Specifies the prediction (aka, the automatically generated piece of
metadata) and the target (for example, a column name) that can be
accepted.



=head2 AcceptRule => L<Paws::DataZone::AcceptRule>

Specifies the rule (or the conditions) under which a prediction can be
accepted.



=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure idempotency of the
request. This field is automatically populated if not provided.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 B<REQUIRED> Identifier => Str

The identifier of the asset.



=head2 Revision => Str

The revision that is to be made to the asset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptPredictions in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

