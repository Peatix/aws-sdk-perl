
package Paws::DataZone::ListNotifications;
  use Moose;
  has AfterTimestamp => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'afterTimestamp');
  has BeforeTimestamp => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'beforeTimestamp');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Subjects => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'subjects');
  has TaskStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'taskStatus');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotifications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/notifications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListNotificationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListNotifications - Arguments for method ListNotifications on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotifications on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListNotifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotifications.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListNotificationsOutput = $datazone->ListNotifications(
      DomainIdentifier => 'MyDomainId',
      Type             => 'TASK',
      AfterTimestamp   => '1970-01-01T01:00:00',    # OPTIONAL
      BeforeTimestamp  => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyPaginationToken',      # OPTIONAL
      Subjects         => [ 'MyString', ... ],      # OPTIONAL
      TaskStatus       => 'ACTIVE',                 # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListNotificationsOutput->NextToken;
    my $Notifications = $ListNotificationsOutput->Notifications;

    # Returns a L<Paws::DataZone::ListNotificationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListNotifications>

=head1 ATTRIBUTES


=head2 AfterTimestamp => Str

The time after which you want to list notifications.



=head2 BeforeTimestamp => Str

The time before which you want to list notifications.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 MaxResults => Int

The maximum number of notifications to return in a single call to
C<ListNotifications>. When the number of notifications to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<ListNotifications> to list the next set of notifications.



=head2 NextToken => Str

When the number of notifications is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of notifications, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListNotifications> to list the next set of notifications.



=head2 Subjects => ArrayRef[Str|Undef]

The subjects of notifications.



=head2 TaskStatus => Str

The task status of notifications.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 B<REQUIRED> Type => Str

The type of notifications.

Valid values are: C<"TASK">, C<"EVENT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotifications in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

