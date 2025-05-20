
package Paws::WorkMail::DescribeEntity;
  use Moose;
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEntity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DescribeEntityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeEntity - Arguments for method DescribeEntity on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEntity on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DescribeEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEntity.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DescribeEntityResponse = $workmail->DescribeEntity(
      Email          => 'MyEmailAddress',
      OrganizationId => 'MyOrganizationId',

    );

    # Results:
    my $EntityId = $DescribeEntityResponse->EntityId;
    my $Name     = $DescribeEntityResponse->Name;
    my $Type     = $DescribeEntityResponse->Type;

    # Returns a L<Paws::WorkMail::DescribeEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DescribeEntity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Email => Str

The email under which the entity exists.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the entity exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEntity in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

