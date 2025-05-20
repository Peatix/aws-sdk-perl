
package Paws::OpenSearchServerless::CreateSecurityConfig;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has IamIdentityCenterOptions => (is => 'ro', isa => 'Paws::OpenSearchServerless::CreateIamIdentityCenterConfigOptions', traits => ['NameInRequest'], request_name => 'iamIdentityCenterOptions' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has SamlOptions => (is => 'ro', isa => 'Paws::OpenSearchServerless::SamlConfigOptions', traits => ['NameInRequest'], request_name => 'samlOptions' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::CreateSecurityConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateSecurityConfig - Arguments for method CreateSecurityConfig on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecurityConfig on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method CreateSecurityConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecurityConfig.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $CreateSecurityConfigResponse = $aoss->CreateSecurityConfig(
      Name                     => 'MyConfigName',
      Type                     => 'saml',
      ClientToken              => 'MyClientToken',          # OPTIONAL
      Description              => 'MyConfigDescription',    # OPTIONAL
      IamIdentityCenterOptions => {
        InstanceArn    => 'MyIamIdentityCenterInstanceArn', # min: 10, max: 1224
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
      $CreateSecurityConfigResponse->SecurityConfigDetail;

 # Returns a L<Paws::OpenSearchServerless::CreateSecurityConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/CreateSecurityConfig>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure idempotency of the request.



=head2 Description => Str

A description of the security configuration.



=head2 IamIdentityCenterOptions => L<Paws::OpenSearchServerless::CreateIamIdentityCenterConfigOptions>

Describes IAM Identity Center options in the form of a key-value map.
This field is required if you specify iamidentitycenter for the type
parameter.



=head2 B<REQUIRED> Name => Str

The name of the security configuration.



=head2 SamlOptions => L<Paws::OpenSearchServerless::SamlConfigOptions>

Describes SAML options in in the form of a key-value map. This field is
required if you specify C<saml> for the C<type> parameter.



=head2 B<REQUIRED> Type => Str

The type of security configuration.

Valid values are: C<"saml">, C<"iamidentitycenter">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityConfig in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

