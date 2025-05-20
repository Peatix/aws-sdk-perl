
package Paws::EMR::UpdateStudioSessionMapping;
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str');
  has IdentityName => (is => 'ro', isa => 'Str');
  has IdentityType => (is => 'ro', isa => 'Str', required => 1);
  has SessionPolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStudioSessionMapping');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::UpdateStudioSessionMapping - Arguments for method UpdateStudioSessionMapping on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStudioSessionMapping on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method UpdateStudioSessionMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStudioSessionMapping.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->UpdateStudioSessionMapping(
      IdentityType     => 'USER',
      SessionPolicyArn => 'MyXmlStringMaxLen256',
      StudioId         => 'MyXmlStringMaxLen256',
      IdentityId       => 'MyXmlStringMaxLen256',    # OPTIONAL
      IdentityName     => 'MyXmlStringMaxLen256',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/UpdateStudioSessionMapping>

=head1 ATTRIBUTES


=head2 IdentityId => Str

The globally unique identifier (GUID) of the user or group. For more
information, see UserId
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId)
and GroupId
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId)
in the I<IAM Identity Center Identity Store API Reference>. Either
C<IdentityName> or C<IdentityId> must be specified.



=head2 IdentityName => Str

The name of the user or group to update. For more information, see
UserName
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName)
and DisplayName
(https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName)
in the I<IAM Identity Center Identity Store API Reference>. Either
C<IdentityName> or C<IdentityId> must be specified.



=head2 B<REQUIRED> IdentityType => Str

Specifies whether the identity to update is a user or a group.

Valid values are: C<"USER">, C<"GROUP">

=head2 B<REQUIRED> SessionPolicyArn => Str

The Amazon Resource Name (ARN) of the session policy to associate with
the specified user or group.



=head2 B<REQUIRED> StudioId => Str

The ID of the Amazon EMR Studio.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStudioSessionMapping in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

