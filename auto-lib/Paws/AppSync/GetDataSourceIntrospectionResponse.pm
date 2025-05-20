
package Paws::AppSync::GetDataSourceIntrospectionResponse;
  use Moose;
  has IntrospectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'introspectionId');
  has IntrospectionResult => (is => 'ro', isa => 'Paws::AppSync::DataSourceIntrospectionResult', traits => ['NameInRequest'], request_name => 'introspectionResult');
  has IntrospectionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'introspectionStatus');
  has IntrospectionStatusDetail => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'introspectionStatusDetail');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetDataSourceIntrospectionResponse

=head1 ATTRIBUTES


=head2 IntrospectionId => Str

The introspection ID. Each introspection contains a unique ID that can
be used to reference the instrospection record.


=head2 IntrospectionResult => L<Paws::AppSync::DataSourceIntrospectionResult>

The C<DataSourceIntrospectionResult> object data.


=head2 IntrospectionStatus => Str

The status of the introspection during retrieval. By default, when a
new instrospection is being retrieved, the status will be set to
C<PROCESSING>. Once the operation has been completed, the status will
change to C<SUCCESS> or C<FAILED> depending on how the data was parsed.
A C<FAILED> operation will return an error and its details as an
C<introspectionStatusDetail>.

Valid values are: C<"PROCESSING">, C<"FAILED">, C<"SUCCESS">
=head2 IntrospectionStatusDetail => Str

The error detail field. When a C<FAILED> C<introspectionStatus> is
returned, the C<introspectionStatusDetail> will also return the exact
error that was generated during the operation.


=head2 _request_id => Str


=cut

