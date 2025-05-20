
package Paws::LakeFormation::StartQueryPlanning;
  use Moose;
  has QueryPlanningContext => (is => 'ro', isa => 'Paws::LakeFormation::QueryPlanningContext', required => 1);
  has QueryString => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQueryPlanning');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartQueryPlanning');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::StartQueryPlanningResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::StartQueryPlanning - Arguments for method StartQueryPlanning on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQueryPlanning on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method StartQueryPlanning.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQueryPlanning.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $StartQueryPlanningResponse = $lakeformation->StartQueryPlanning(
      QueryPlanningContext => {
        DatabaseName    => 'MyQueryPlanningContextDatabaseNameString',  # min: 1
        CatalogId       => 'MyCatalogIdString',     # min: 1, max: 255; OPTIONAL
        QueryAsOfTime   => '1970-01-01T01:00:00',   # OPTIONAL
        QueryParameters => { 'MyString' => 'MyString', },    # OPTIONAL
        TransactionId   => 'MyTransactionIdString', # min: 1, max: 255; OPTIONAL
      },
      QueryString => 'MySyntheticStartQueryPlanningRequestQueryString',

    );

    # Results:
    my $QueryId = $StartQueryPlanningResponse->QueryId;

    # Returns a L<Paws::LakeFormation::StartQueryPlanningResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/StartQueryPlanning>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryPlanningContext => L<Paws::LakeFormation::QueryPlanningContext>

A structure containing information about the query plan.



=head2 B<REQUIRED> QueryString => Str

A PartiQL query statement used as an input to the planner service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQueryPlanning in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

