
package Paws::OpenSearchServerless::UpdateSecurityConfig;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has ConfigVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configVersion' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has IamIdentityCenterOptionsUpdates => (is => 'ro', isa => 'Paws::OpenSearchServerless::UpdateIamIdentityCenterConfigOptions', traits => ['NameInRequest'], request_name => 'iamIdentityCenterOptionsUpdates' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has SamlOptions => (is => 'ro', isa => 'Paws::OpenSearchServerless::SamlConfigOptions', traits => ['NameInRequest'], request_name => 'samlOptions' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurityConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::UpdateSecurityConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateSecurityConfig - Arguments for method UpdateSecurityConfig on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurityConfig on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method UpdateSecurityConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurityConfig.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $UpdateSecurityConfigResponse = $aoss->UpdateSecurityConfig(
      ConfigVersion                   => 'MyPolicyVersion',
      Id                              => 'MySecurityConfigId',
      ClientToken                     => 'MyClientToken',          # OPTIONAL
      Description                     => 'MyConfigDescription',    # OPTIONAL
      IamIdentityCenterOptionsUpdates => {
        GroupAttribute => 'GroupId', # values: GroupId, GroupName; OPTIONAL
        UserAttribute  => 'UserId',  # values: UserId, UserName, Email; OPTIONAL
      },    # OPTIONAL
      SamlOptions => {
        Metadata       => 'MysamlMetadata',        # min: 1, max: 51200
        GroupAttribute => 'MysamlGroupAttribute',  # min: 1, max: 2048; OPTIONAL
        OpenSearchServerlessEntityId =>
          'MyopenSearchServerlessEntityId',        # min: 1, max: 1024; OPTIONAL
        SessionTimeout => 1,                       # min: 5, max: 720; OPTIONAL
        UserAttribute  => 'MysamlUserAttribute',   # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $SecurityConfigDetail =
      $UpdateSecurityConfigResponse->SecurityConfigDetail;

 # Returns a L<Paws::OpenSearchServerless::UpdateSecurityConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/UpdateSecurityConfig>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 B<REQUIRED> ConfigVersion => Str

The version of the security configuration to be updated. You can find
the most recent version of a security configuration using the
C<GetSecurityPolicy> command.



=head2 Description => Str

A description of the security configuration.



=head2 IamIdentityCenterOptionsUpdates => L<Paws::OpenSearchServerless::UpdateIamIdentityCenterConfigOptions>

Describes IAM Identity Center options in the form of a key-value map.



=head2 B<REQUIRED> Id => Str

The security configuration identifier. For SAML the ID will be
C<saml/E<lt>accountIdE<gt>/E<lt>idpProviderNameE<gt>>. For example,
C<saml/123456789123/OKTADev>.



=head2 SamlOptions => L<Paws::OpenSearchServerless::SamlConfigOptions>

SAML options in in the form of a key-value map.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurityConfig in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

