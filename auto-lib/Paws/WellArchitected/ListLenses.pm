
package Paws::WellArchitected::ListLenses;
  use Moose;
  has LensName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'LensName');
  has LensStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'LensStatus');
  has LensType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'LensType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLenses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/lenses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListLensesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListLenses - Arguments for method ListLenses on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLenses on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListLenses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLenses.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListLensesOutput = $wellarchitected->ListLenses(
      LensName   => 'MyLensName',      # OPTIONAL
      LensStatus => 'ALL',             # OPTIONAL
      LensType   => 'AWS_OFFICIAL',    # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $LensSummaries = $ListLensesOutput->LensSummaries;
    my $NextToken     = $ListLensesOutput->NextToken;

    # Returns a L<Paws::WellArchitected::ListLensesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListLenses>

=head1 ATTRIBUTES


=head2 LensName => Str





=head2 LensStatus => Str

The status of lenses to be returned.

Valid values are: C<"ALL">, C<"DRAFT">, C<"PUBLISHED">

=head2 LensType => Str

The type of lenses to be returned.

Valid values are: C<"AWS_OFFICIAL">, C<"CUSTOM_SHARED">, C<"CUSTOM_SELF">

=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLenses in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

