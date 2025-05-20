
package Paws::Proton::ListServiceInstances;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Proton::ListServiceInstancesFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' );
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListServiceInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServiceInstances - Arguments for method ListServiceInstances on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceInstances on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListServiceInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceInstances.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListServiceInstancesOutput = $proton->ListServiceInstances(
      Filters => [
        {
          Key => 'name'
          , # values: name, deploymentStatus, templateName, serviceName, deployedTemplateVersionStatus, environmentName, lastDeploymentAttemptedAtBefore, lastDeploymentAttemptedAtAfter, createdAtBefore, createdAtAfter; OPTIONAL
          Value => 'MyListServiceInstancesFilterValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults  => 1,                   # OPTIONAL
      NextToken   => 'MyNextToken',       # OPTIONAL
      ServiceName => 'MyResourceName',    # OPTIONAL
      SortBy      => 'name',              # OPTIONAL
      SortOrder   => 'ASCENDING',         # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListServiceInstancesOutput->NextToken;
    my $ServiceInstances = $ListServiceInstancesOutput->ServiceInstances;

    # Returns a L<Paws::Proton::ListServiceInstancesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListServiceInstances>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Proton::ListServiceInstancesFilter>]

An array of filtering criteria that scope down the result list. By
default, all service instances in the Amazon Web Services account are
returned.



=head2 MaxResults => Int

The maximum number of service instances to list.



=head2 NextToken => Str

A token that indicates the location of the next service in the array of
service instances, after the list of service instances that was
previously requested.



=head2 ServiceName => Str

The name of the service that the service instance belongs to.



=head2 SortBy => Str

The field that the result list is sorted by.

When you choose to sort by C<serviceName>, service instances within
each service are sorted by service instance name.

Default: C<serviceName>

Valid values are: C<"name">, C<"deploymentStatus">, C<"templateName">, C<"serviceName">, C<"environmentName">, C<"lastDeploymentAttemptedAt">, C<"createdAt">

=head2 SortOrder => Str

Result list sort order.

Default: C<ASCENDING>

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceInstances in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

