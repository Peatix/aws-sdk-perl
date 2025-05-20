
package Paws::ECS::ListServiceDeployments;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has CreatedAt => (is => 'ro', isa => 'Paws::ECS::CreatedAt', traits => ['NameInRequest'], request_name => 'createdAt' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' , required => 1);
  has Status => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListServiceDeploymentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListServiceDeployments - Arguments for method ListServiceDeployments on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceDeployments on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ListServiceDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceDeployments.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $ListServiceDeploymentsResponse = $ecs->ListServiceDeployments(
      Service   => 'MyString',
      Cluster   => 'MyString',    # OPTIONAL
      CreatedAt => {
        After  => '1970-01-01T01:00:00',    # OPTIONAL
        Before => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      Status     => [
        'PENDING',
        ... # values: PENDING, SUCCESSFUL, STOPPED, STOP_REQUESTED, IN_PROGRESS, ROLLBACK_REQUESTED, ROLLBACK_IN_PROGRESS, ROLLBACK_SUCCESSFUL, ROLLBACK_FAILED
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListServiceDeploymentsResponse->NextToken;
    my $ServiceDeployments =
      $ListServiceDeploymentsResponse->ServiceDeployments;

    # Returns a L<Paws::ECS::ListServiceDeploymentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ListServiceDeployments>

=head1 ATTRIBUTES


=head2 Cluster => Str

The cluster that hosts the service. This can either be the cluster name
or ARN. Starting April 15, 2023, Amazon Web Services will not onboard
new customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price
and performance. If you don't specify a cluster, C<default> is used.



=head2 CreatedAt => L<Paws::ECS::CreatedAt>

An optional filter you can use to narrow the results by the service
creation date. If you do not specify a value, the result includes all
services created before the current time. The format is yyyy-MM-dd
HH:mm:ss.SSSSSS.



=head2 MaxResults => Int

The maximum number of service deployment results that
C<ListServiceDeployments> returned in paginated output. When this
parameter is used, C<ListServiceDeployments> only returns C<maxResults>
results in a single page along with a C<nextToken> response element.
The remaining results of the initial request can be seen by sending
another C<ListServiceDeployments> request with the returned
C<nextToken> value. This value can be between 1 and 100. If this
parameter isn't used, then C<ListServiceDeployments> returns up to 20
results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a C<ListServiceDeployments>
request indicating that more results are available to fulfill the
request and further calls are needed. If you provided C<maxResults>,
it's possible the number of results is fewer than C<maxResults>.



=head2 B<REQUIRED> Service => Str

The ARN or name of the service



=head2 Status => ArrayRef[Str|Undef]

An optional filter you can use to narrow the results. If you do not
specify a status, then all status values are included in the result.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceDeployments in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

