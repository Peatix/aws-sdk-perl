
package Paws::QBusiness::GetDataAccessorResponse;
  use Moose;
  has ActionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::ActionConfiguration]', traits => ['NameInRequest'], request_name => 'actionConfigurations');
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DataAccessorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataAccessorArn');
  has DataAccessorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataAccessorId');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has IdcApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idcApplicationArn');
  has Principal => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principal');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetDataAccessorResponse

=head1 ATTRIBUTES


=head2 ActionConfigurations => ArrayRef[L<Paws::QBusiness::ActionConfiguration>]

The list of action configurations specifying the allowed actions and
any associated filters.


=head2 ApplicationId => Str

The unique identifier of the Amazon Q Business application associated
with this data accessor.


=head2 CreatedAt => Str

The timestamp when the data accessor was created.


=head2 DataAccessorArn => Str

The Amazon Resource Name (ARN) of the data accessor.


=head2 DataAccessorId => Str

The unique identifier of the data accessor.


=head2 DisplayName => Str

The friendly name of the data accessor.


=head2 IdcApplicationArn => Str

The Amazon Resource Name (ARN) of the IAM Identity Center application
associated with this data accessor.


=head2 Principal => Str

The Amazon Resource Name (ARN) of the IAM role for the ISV associated
with this data accessor.


=head2 UpdatedAt => Str

The timestamp when the data accessor was last updated.


=head2 _request_id => Str


=cut

