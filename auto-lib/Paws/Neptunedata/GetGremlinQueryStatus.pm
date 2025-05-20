
package Paws::Neptunedata::GetGremlinQueryStatus;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGremlinQueryStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/gremlin/status/{queryId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetGremlinQueryStatusOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetGremlinQueryStatus - Arguments for method GetGremlinQueryStatus on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGremlinQueryStatus on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetGremlinQueryStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGremlinQueryStatus.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetGremlinQueryStatusOutput = $neptune -db->GetGremlinQueryStatus(
      QueryId => 'MyString',

    );

    # Results:
    my $QueryEvalStats = $GetGremlinQueryStatusOutput->QueryEvalStats;
    my $QueryId        = $GetGremlinQueryStatusOutput->QueryId;
    my $QueryString    = $GetGremlinQueryStatusOutput->QueryString;

    # Returns a L<Paws::Neptunedata::GetGremlinQueryStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetGremlinQueryStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The unique identifier that identifies the Gremlin query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGremlinQueryStatus in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

