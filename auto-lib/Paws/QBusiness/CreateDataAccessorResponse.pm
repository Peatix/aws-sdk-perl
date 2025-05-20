
package Paws::QBusiness::CreateDataAccessorResponse;
  use Moose;
  has DataAccessorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataAccessorArn', required => 1);
  has DataAccessorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataAccessorId', required => 1);
  has IdcApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idcApplicationArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateDataAccessorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataAccessorArn => Str

The Amazon Resource Name (ARN) of the created data accessor.


=head2 B<REQUIRED> DataAccessorId => Str

The unique identifier of the created data accessor.


=head2 B<REQUIRED> IdcApplicationArn => Str

The Amazon Resource Name (ARN) of the IAM Identity Center application
created for this data accessor.


=head2 _request_id => Str


=cut

