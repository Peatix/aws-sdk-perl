
package Paws::SecurityLake::ListLogSources;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accounts');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'regions');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::LogSourceResource]', traits => ['NameInRequest'], request_name => 'sources');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLogSources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/logsources/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::ListLogSourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::ListLogSources - Arguments for method ListLogSources on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLogSources on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method ListLogSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLogSources.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $ListLogSourcesResponse = $securitylake->ListLogSources(
      Accounts => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextToken',          # OPTIONAL
      Regions    => [ 'MyRegion', ... ],    # OPTIONAL
      Sources    => [
        {
          AwsLogSource => {
            SourceName => 'ROUTE53'
            , # values: ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA, EKS_AUDIT, WAF; OPTIONAL
            SourceVersion => 'MyAwsLogSourceVersion',    # OPTIONAL
          },    # OPTIONAL
          CustomLogSource => {
            Attributes => {
              CrawlerArn =>
                'MyAmazonResourceName',    # min: 1, max: 1011; OPTIONAL
              DatabaseArn =>
                'MyAmazonResourceName',    # min: 1, max: 1011; OPTIONAL
              TableArn => 'MyAmazonResourceName',  # min: 1, max: 1011; OPTIONAL
            },    # OPTIONAL
            Provider => {
              Location => 'MyS3URI',      # max: 1024; OPTIONAL
              RoleArn  => 'MyRoleArn',    # OPTIONAL
            },    # OPTIONAL
            SourceName => 'MyCustomLogSourceName',   # min: 1, max: 64; OPTIONAL
            SourceVersion =>
              'MyCustomLogSourceVersion',            # min: 1, max: 32; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListLogSourcesResponse->NextToken;
    my $Sources   = $ListLogSourcesResponse->Sources;

    # Returns a L<Paws::SecurityLake::ListLogSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/ListLogSources>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

The list of Amazon Web Services accounts for which log sources are
displayed.



=head2 MaxResults => Int

The maximum number of accounts for which the log sources are displayed.



=head2 NextToken => Str

If nextToken is returned, there are more results available. You can
repeat the call using the returned token to retrieve the next page.



=head2 Regions => ArrayRef[Str|Undef]

The list of Regions for which log sources are displayed.



=head2 Sources => ArrayRef[L<Paws::SecurityLake::LogSourceResource>]

The list of sources for which log sources are displayed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLogSources in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

