
package Paws::Neptunedata::ExecuteGremlinProfileQuery;
  use Moose;
  has Chop => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'profile.chop');
  has GremlinQuery => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gremlin', required => 1);
  has IndexOps => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'profile.indexOps');
  has Results => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'profile.results');
  has Serializer => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profile.serializer');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteGremlinProfileQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/gremlin/profile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ExecuteGremlinProfileQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteGremlinProfileQuery - Arguments for method ExecuteGremlinProfileQuery on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteGremlinProfileQuery on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ExecuteGremlinProfileQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteGremlinProfileQuery.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ExecuteGremlinProfileQueryOutput =
      $neptune -db->ExecuteGremlinProfileQuery(
      GremlinQuery => 'MyString',
      Chop         => 1,             # OPTIONAL
      IndexOps     => 1,             # OPTIONAL
      Results      => 1,             # OPTIONAL
      Serializer   => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Output = $ExecuteGremlinProfileQueryOutput->Output;

    # Returns a L<Paws::Neptunedata::ExecuteGremlinProfileQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ExecuteGremlinProfileQuery>

=head1 ATTRIBUTES


=head2 Chop => Int

If non-zero, causes the results string to be truncated at that number
of characters. If set to zero, the string contains all the results.



=head2 B<REQUIRED> GremlinQuery => Str

The Gremlin query string to profile.



=head2 IndexOps => Bool

If this flag is set to C<TRUE>, the results include a detailed report
of all index operations that took place during query execution and
serialization.



=head2 Results => Bool

If this flag is set to C<TRUE>, the query results are gathered and
displayed as part of the profile report. If C<FALSE>, only the result
count is displayed.



=head2 Serializer => Str

If non-null, the gathered results are returned in a serialized response
message in the format specified by this parameter. See Gremlin profile
API in Neptune
(https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html)
for more information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteGremlinProfileQuery in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

