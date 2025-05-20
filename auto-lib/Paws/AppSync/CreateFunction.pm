
package Paws::AppSync::CreateFunction;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Code => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'code');
  has DataSourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FunctionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'functionVersion');
  has MaxBatchSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxBatchSize');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RequestMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestMappingTemplate');
  has ResponseMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responseMappingTemplate');
  has Runtime => (is => 'ro', isa => 'Paws::AppSync::AppSyncRuntime', traits => ['NameInRequest'], request_name => 'runtime');
  has SyncConfig => (is => 'ro', isa => 'Paws::AppSync::SyncConfig', traits => ['NameInRequest'], request_name => 'syncConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/functions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateFunctionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateFunction - Arguments for method CreateFunction on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunction on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunction.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateFunctionResponse = $appsync->CreateFunction(
      ApiId                   => 'MyString',
      DataSourceName          => 'MyResourceName',
      Name                    => 'MyResourceName',
      Code                    => 'MyCode',               # OPTIONAL
      Description             => 'MyString',             # OPTIONAL
      FunctionVersion         => 'MyString',             # OPTIONAL
      MaxBatchSize            => 1,                      # OPTIONAL
      RequestMappingTemplate  => 'MyMappingTemplate',    # OPTIONAL
      ResponseMappingTemplate => 'MyMappingTemplate',    # OPTIONAL
      Runtime                 => {
        Name           => 'APPSYNC_JS',                  # values: APPSYNC_JS
        RuntimeVersion => 'MyString',

      },    # OPTIONAL
      SyncConfig => {
        ConflictDetection => 'VERSION',    # values: VERSION, NONE; OPTIONAL
        ConflictHandler   => 'OPTIMISTIC_CONCURRENCY'
        ,    # values: OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE; OPTIONAL
        LambdaConflictHandlerConfig =>
          { LambdaConflictHandlerArn => 'MyString', },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FunctionConfiguration = $CreateFunctionResponse->FunctionConfiguration;

    # Returns a L<Paws::AppSync::CreateFunctionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The GraphQL API ID.



=head2 Code => Str

The C<function> code that contains the request and response functions.
When code is used, the C<runtime> is required. The C<runtime> value
must be C<APPSYNC_JS>.



=head2 B<REQUIRED> DataSourceName => Str

The C<Function> C<DataSource> name.



=head2 Description => Str

The C<Function> description.



=head2 FunctionVersion => Str

The C<version> of the request mapping template. Currently, the
supported value is 2018-05-29. Note that when using VTL and mapping
templates, the C<functionVersion> is required.



=head2 MaxBatchSize => Int

The maximum batching size for a resolver.



=head2 B<REQUIRED> Name => Str

The C<Function> name. The function name does not have to be unique.



=head2 RequestMappingTemplate => Str

The C<Function> request mapping template. Functions support only the
2018-05-29 version of the request mapping template.



=head2 ResponseMappingTemplate => Str

The C<Function> response mapping template.



=head2 Runtime => L<Paws::AppSync::AppSyncRuntime>





=head2 SyncConfig => L<Paws::AppSync::SyncConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunction in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

