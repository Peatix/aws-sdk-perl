
package Paws::AppFabric::StartUserAccessTasks;
  use Moose;
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appBundleIdentifier', required => 1);
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartUserAccessTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/useraccess/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::StartUserAccessTasksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::StartUserAccessTasks - Arguments for method StartUserAccessTasks on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartUserAccessTasks on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method StartUserAccessTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartUserAccessTasks.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $StartUserAccessTasksResponse = $appfabric->StartUserAccessTasks(
      AppBundleIdentifier => 'MyIdentifier',
      Email               => 'MyEmail',

    );

    # Results:
    my $UserAccessTasksList =
      $StartUserAccessTasksResponse->UserAccessTasksList;

    # Returns a L<Paws::AppFabric::StartUserAccessTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/StartUserAccessTasks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.



=head2 B<REQUIRED> Email => Str

The email address of the target user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartUserAccessTasks in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

