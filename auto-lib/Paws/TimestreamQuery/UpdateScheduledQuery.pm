
package Paws::TimestreamQuery::UpdateScheduledQuery;
  use Moose;
  has ScheduledQueryArn => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScheduledQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::UpdateScheduledQuery - Arguments for method UpdateScheduledQuery on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScheduledQuery on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method UpdateScheduledQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScheduledQuery.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    $query . timestream->UpdateScheduledQuery(
      ScheduledQueryArn => 'MyAmazonResourceName',
      State             => 'ENABLED',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/UpdateScheduledQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledQueryArn => Str

ARN of the scheuled query.



=head2 B<REQUIRED> State => Str

State of the scheduled query.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScheduledQuery in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

