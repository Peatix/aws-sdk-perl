
package Paws::Kendra::DeletePrincipalMapping;
  use Moose;
  has DataSourceId => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has OrderingId => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePrincipalMapping');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DeletePrincipalMapping - Arguments for method DeletePrincipalMapping on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePrincipalMapping on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DeletePrincipalMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePrincipalMapping.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->DeletePrincipalMapping(
      GroupId      => 'MyGroupId',
      IndexId      => 'MyIndexId',
      DataSourceId => 'MyDataSourceId',    # OPTIONAL
      OrderingId   => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DeletePrincipalMapping>

=head1 ATTRIBUTES


=head2 DataSourceId => Str

The identifier of the data source you want to delete a group from.

A group can be tied to multiple data sources. You can delete a group
from accessing documents in a certain data source. For example, the
groups "Research", "Engineering", and "Sales and Marketing" are all
tied to the company's documents stored in the data sources Confluence
and Salesforce. You want to delete "Research" and "Engineering" groups
from Salesforce, so that these groups cannot access customer-related
documents stored in Salesforce. Only "Sales and Marketing" should
access documents in the Salesforce data source.



=head2 B<REQUIRED> GroupId => Str

The identifier of the group you want to delete.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index you want to delete a group from.



=head2 OrderingId => Int

The timestamp identifier you specify to ensure Amazon Kendra does not
override the latest C<DELETE> action with previous actions. The highest
number ID, which is the ordering ID, is the latest action you want to
process and apply on top of other actions with lower number IDs. This
prevents previous actions with lower number IDs from possibly
overriding the latest action.

The ordering ID can be the Unix time of the last update you made to a
group members list. You would then provide this list when calling
C<PutPrincipalMapping>. This ensures your C<DELETE> action for that
updated group with the latest members list doesn't get overwritten by
earlier C<DELETE> actions for the same group which are yet to be
processed.

The default ordering ID is the current Unix time in milliseconds that
the action was received by Amazon Kendra.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePrincipalMapping in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

