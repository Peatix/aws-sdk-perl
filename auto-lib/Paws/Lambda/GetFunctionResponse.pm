
package Paws::Lambda::GetFunctionResponse;
  use Moose;
  has Code => (is => 'ro', isa => 'Paws::Lambda::FunctionCodeLocation');
  has Concurrency => (is => 'ro', isa => 'Paws::Lambda::Concurrency');
  has Configuration => (is => 'ro', isa => 'Paws::Lambda::FunctionConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags');
  has TagsError => (is => 'ro', isa => 'Paws::Lambda::TagsError');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunctionResponse

=head1 ATTRIBUTES


=head2 Code => L<Paws::Lambda::FunctionCodeLocation>

The deployment package of the function or version.


=head2 Concurrency => L<Paws::Lambda::Concurrency>

The function's reserved concurrency
(https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).


=head2 Configuration => L<Paws::Lambda::FunctionConfiguration>

The configuration of the function or version.


=head2 Tags => L<Paws::Lambda::Tags>

The function's tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html). Lambda
returns tag data only if you have explicit allow permissions for
lambda:ListTags
(https://docs.aws.amazon.com/lambda/latest/api/API_ListTags.html).


=head2 TagsError => L<Paws::Lambda::TagsError>

An object that contains details about an error related to retrieving
tags.


=head2 _request_id => Str


=cut

