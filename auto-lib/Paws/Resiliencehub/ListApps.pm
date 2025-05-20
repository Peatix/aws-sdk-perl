
package Paws::Resiliencehub::ListApps;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'appArn');
  has AwsApplicationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsApplicationArn');
  has FromLastAssessmentTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'fromLastAssessmentTime');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ReverseOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'reverseOrder');
  has ToLastAssessmentTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'toLastAssessmentTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-apps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListAppsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListApps - Arguments for method ListApps on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApps on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListApps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApps.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListAppsResponse = $resiliencehub->ListApps(
      AppArn                 => 'MyArn',                  # OPTIONAL
      AwsApplicationArn      => 'MyArn',                  # OPTIONAL
      FromLastAssessmentTime => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      Name                   => 'MyEntityName',           # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      ReverseOrder           => 1,                        # OPTIONAL
      ToLastAssessmentTime   => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $AppSummaries = $ListAppsResponse->AppSummaries;
    my $NextToken    = $ListAppsResponse->NextToken;

    # Returns a L<Paws::Resiliencehub::ListAppsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListApps>

=head1 ATTRIBUTES


=head2 AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 AwsApplicationArn => Str

Amazon Resource Name (ARN) of Resource Groups group that is integrated
with an AppRegistry application. For more information about ARNs, see
Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 FromLastAssessmentTime => Str

Lower limit of the range that is used to filter applications based on
their last assessment times.



=head2 MaxResults => Int

Maximum number of results to include in the response. If more results
exist than the specified C<MaxResults> value, a token is included in
the response so that the remaining results can be retrieved.



=head2 Name => Str

The name for the one of the listed applications.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.



=head2 ReverseOrder => Bool

The application list is sorted based on the values of
C<lastAppComplianceEvaluationTime> field. By default, application list
is sorted in ascending order. To sort the application list in
descending order, set this field to C<True>.



=head2 ToLastAssessmentTime => Str

Upper limit of the range that is used to filter the applications based
on their last assessment times.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApps in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

