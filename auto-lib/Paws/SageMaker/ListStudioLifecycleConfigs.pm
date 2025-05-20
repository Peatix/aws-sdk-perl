
package Paws::SageMaker::ListStudioLifecycleConfigs;
  use Moose;
  has AppTypeEquals => (is => 'ro', isa => 'Str');
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has ModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStudioLifecycleConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListStudioLifecycleConfigsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListStudioLifecycleConfigs - Arguments for method ListStudioLifecycleConfigs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStudioLifecycleConfigs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListStudioLifecycleConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStudioLifecycleConfigs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListStudioLifecycleConfigsResponse =
      $api . sagemaker->ListStudioLifecycleConfigs(
      AppTypeEquals      => 'JupyterServer',                  # OPTIONAL
      CreationTimeAfter  => '1970-01-01T01:00:00',            # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',            # OPTIONAL
      MaxResults         => 1,                                # OPTIONAL
      ModifiedTimeAfter  => '1970-01-01T01:00:00',            # OPTIONAL
      ModifiedTimeBefore => '1970-01-01T01:00:00',            # OPTIONAL
      NameContains       => 'MyStudioLifecycleConfigName',    # OPTIONAL
      NextToken          => 'MyNextToken',                    # OPTIONAL
      SortBy             => 'CreationTime',                   # OPTIONAL
      SortOrder          => 'Ascending',                      # OPTIONAL
      );

    # Results:
    my $NextToken = $ListStudioLifecycleConfigsResponse->NextToken;
    my $StudioLifecycleConfigs =
      $ListStudioLifecycleConfigsResponse->StudioLifecycleConfigs;

    # Returns a L<Paws::SageMaker::ListStudioLifecycleConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListStudioLifecycleConfigs>

=head1 ATTRIBUTES


=head2 AppTypeEquals => Str

A parameter to search for the App Type to which the Lifecycle
Configuration is attached.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"CodeEditor">, C<"JupyterLab">

=head2 CreationTimeAfter => Str

A filter that returns only Lifecycle Configurations created on or after
the specified time.



=head2 CreationTimeBefore => Str

A filter that returns only Lifecycle Configurations created on or
before the specified time.



=head2 MaxResults => Int

The total number of items to return in the response. If the total
number of items available is more than the value specified, a
C<NextToken> is provided in the response. To resume pagination, provide
the C<NextToken> value in the as part of a subsequent call. The default
value is 10.



=head2 ModifiedTimeAfter => Str

A filter that returns only Lifecycle Configurations modified after the
specified time.



=head2 ModifiedTimeBefore => Str

A filter that returns only Lifecycle Configurations modified before the
specified time.



=head2 NameContains => Str

A string in the Lifecycle Configuration name. This filter returns only
Lifecycle Configurations whose name contains the specified string.



=head2 NextToken => Str

If the previous call to ListStudioLifecycleConfigs didn't return the
full set of Lifecycle Configurations, the call returns a token for
getting the next set of Lifecycle Configurations.



=head2 SortBy => Str

The property used to sort results. The default value is CreationTime.

Valid values are: C<"CreationTime">, C<"LastModifiedTime">, C<"Name">

=head2 SortOrder => Str

The sort order. The default value is Descending.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStudioLifecycleConfigs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

