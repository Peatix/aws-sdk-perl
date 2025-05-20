
package Paws::ChimeSDKIdentity::CreateAppInstanceUser;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has AppInstanceUserId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationSettings => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::ExpirationSettings');
  has Metadata => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKIdentity::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppInstanceUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::CreateAppInstanceUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::CreateAppInstanceUser - Arguments for method CreateAppInstanceUser on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppInstanceUser on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method CreateAppInstanceUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppInstanceUser.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $CreateAppInstanceUserResponse = $identity -chime->CreateAppInstanceUser(
      AppInstanceArn     => 'MyChimeArn',
      AppInstanceUserId  => 'MyUserId',
      ClientRequestToken => 'MyClientRequestToken',
      Name               => 'MyUserName',
      ExpirationSettings => {
        ExpirationCriterion => 'CREATED_TIMESTAMP',  # values: CREATED_TIMESTAMP
        ExpirationDays      => 1,                    # min: 1, max: 5475

      },    # OPTIONAL
      Metadata => 'MyMetadata',    # OPTIONAL
      Tags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppInstanceUserArn = $CreateAppInstanceUserResponse->AppInstanceUserArn;

    # Returns a L<Paws::ChimeSDKIdentity::CreateAppInstanceUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/CreateAppInstanceUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance> request.



=head2 B<REQUIRED> AppInstanceUserId => Str

The user ID of the C<AppInstance>.



=head2 B<REQUIRED> ClientRequestToken => Str

The unique ID of the request. Use different tokens to request
additional C<AppInstances>.



=head2 ExpirationSettings => L<Paws::ChimeSDKIdentity::ExpirationSettings>

Settings that control the interval after which the C<AppInstanceUser>
is automatically deleted.



=head2 Metadata => Str

The request's metadata. Limited to a 1KB string in UTF-8.



=head2 B<REQUIRED> Name => Str

The user's name.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKIdentity::Tag>]

Tags assigned to the C<AppInstanceUser>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppInstanceUser in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

