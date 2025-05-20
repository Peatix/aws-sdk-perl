
package Paws::AppSync::StartDataSourceIntrospection;
  use Moose;
  has RdsDataApiConfig => (is => 'ro', isa => 'Paws::AppSync::RdsDataApiConfig', traits => ['NameInRequest'], request_name => 'rdsDataApiConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataSourceIntrospection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datasources/introspections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::StartDataSourceIntrospectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::StartDataSourceIntrospection - Arguments for method StartDataSourceIntrospection on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataSourceIntrospection on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method StartDataSourceIntrospection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataSourceIntrospection.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $StartDataSourceIntrospectionResponse =
      $appsync->StartDataSourceIntrospection(
      RdsDataApiConfig => {
        DatabaseName => 'MyRdsDataApiConfigDatabaseName',   # min: 1, max: 128
        ResourceArn  => 'MyRdsDataApiConfigResourceArn',    # min: 20, max: 2048
        SecretArn    => 'MyRdsDataApiConfigSecretArn',      # min: 20, max: 2048

      },    # OPTIONAL
      );

    # Results:
    my $IntrospectionId =
      $StartDataSourceIntrospectionResponse->IntrospectionId;
    my $IntrospectionStatus =
      $StartDataSourceIntrospectionResponse->IntrospectionStatus;
    my $IntrospectionStatusDetail =
      $StartDataSourceIntrospectionResponse->IntrospectionStatusDetail;

    # Returns a L<Paws::AppSync::StartDataSourceIntrospectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/StartDataSourceIntrospection>

=head1 ATTRIBUTES


=head2 RdsDataApiConfig => L<Paws::AppSync::RdsDataApiConfig>

The C<rdsDataApiConfig> object data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataSourceIntrospection in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

